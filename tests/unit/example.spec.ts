import { shallowMount } from '@vue/test-utils';
import Channel from '@/components/Channel.vue';
import Group from '@/components/Group.vue';

describe('Channel.vue', () => {
  it('renders props.msg when passed', () => {
    const msg = 'new message';
    const wrapper = shallowMount(Channel, {
      props: { msg },
    });
    expect(wrapper.text()).toMatch(msg);
  });
});

describe('Group.vue', () => {
  it('renders props.msg when passed', () => {
    const msg = 'new message';
    const wrapper = shallowMount(Group, {
      props: { msg },
    });
    expect(wrapper.text()).toMatch(msg);
  });
});
